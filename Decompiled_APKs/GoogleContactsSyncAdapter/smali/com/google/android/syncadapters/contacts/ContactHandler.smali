.class public Lcom/google/android/syncadapters/contacts/ContactHandler;
.super Ljava/lang/Object;
.source "ContactHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;
    }
.end annotation


# static fields
.field private static final DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

.field private static final DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

.field static final ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TO_PROVIDER_PRIORITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TO_PROVIDER_SENSITIVITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_CALENDAR_LINK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_EVENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_EXTERNAL_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_JOT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_RELATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_SIP_ADDRESS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ENTRY_TYPE_TO_PROVIDER_WEBSITE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROJECTION_PHOTO_FULLDATA:[Ljava/lang/String;

.field static final PROJECTION_PHOTO_METADATA:[Ljava/lang/String;

.field static final PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TO_ENTRY_PRIORITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TO_ENTRY_SENSITIVITY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_CALENDAR_LINK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_EVENT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_EXTERNAL_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_JOT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_RELATION:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_SIP_ADDRESS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final PROVIDER_TYPE_TO_ENTRY_WEBSITE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

.field static final SERVER_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    .line 168
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/photo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

    .line 170
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data_sync2"

    aput-object v1, v0, v4

    const-string v1, "data_sync1"

    aput-object v1, v0, v5

    const-string v1, "data_version"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_METADATA:[Ljava/lang/String;

    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v3

    const-string v1, "data_sync2"

    aput-object v1, v0, v4

    const-string v1, "data_sync1"

    aput-object v1, v0, v5

    const-string v1, "data_version"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_FULLDATA:[Ljava/lang/String;

    .line 1895
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    invoke-direct {v0, v3}, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;-><init>(Z)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    .line 1897
    new-instance v0, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    invoke-direct {v0, v7}, Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;-><init>(Z)V

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    .line 1910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1911
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;

    .line 1922
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;

    .line 1924
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1925
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;

    .line 1930
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;

    .line 1932
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1933
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;

    .line 1954
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;

    .line 1956
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1957
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;

    .line 1962
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;

    .line 1964
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1965
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;

    .line 1970
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;

    .line 1972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1973
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;

    .line 1977
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;

    .line 1979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1980
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_WEBSITE:Ljava/util/HashMap;

    .line 1989
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_WEBSITE:Ljava/util/HashMap;

    .line 1991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1992
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2004
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2007
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_RELATION:Ljava/util/HashMap;

    .line 2008
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_RELATION:Ljava/util/HashMap;

    .line 2010
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2011
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_JOT:Ljava/util/HashMap;

    .line 2017
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_JOT:Ljava/util/HashMap;

    .line 2019
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2020
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EXTERNAL_ID:Ljava/util/HashMap;

    .line 2026
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EXTERNAL_ID:Ljava/util/HashMap;

    .line 2028
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2029
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_PRIORITY:Ljava/util/HashMap;

    .line 2034
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_PRIORITY:Ljava/util/HashMap;

    .line 2036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2037
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2046
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_SENSITIVITY:Ljava/util/HashMap;

    .line 2047
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_SENSITIVITY:Ljava/util/HashMap;

    .line 2049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2050
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_CALENDAR_LINK:Ljava/util/HashMap;

    .line 2055
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_CALENDAR_LINK:Ljava/util/HashMap;

    .line 2057
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2058
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EVENT:Ljava/util/HashMap;

    .line 2062
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EVENT:Ljava/util/HashMap;

    .line 2064
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2065
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_SIP_ADDRESS:Ljava/util/HashMap;

    .line 2070
    invoke-static {v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_SIP_ADDRESS:Ljava/util/HashMap;

    .line 2073
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2074
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2075
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2076
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2077
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2078
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_misc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2079
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2080
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/website"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2081
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_hobby"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2082
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_user_defined_field"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2083
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_language"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2084
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_calendar_link"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2085
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_external_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2086
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_jot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2087
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/relation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2088
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2089
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2090
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2091
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2092
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2093
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2094
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.com.google.cursor.item/contact_extended_property"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2095
    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    const-string v1, "vnd.android.cursor.item/identity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2096
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->compareStringColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/contacts/ContactHandler;->compareBooleanColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method private static compareBooleanColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 8
    .parameter "columnName"
    .parameter "o1"
    .parameter "o2"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1865
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v0, v2

    .line 1866
    .local v0, b1:Z
    :goto_0
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move v1, v2

    .line 1867
    .local v1, b2:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 1868
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    .line 1870
    :cond_0
    :goto_2
    return v2

    .end local v0           #b1:Z
    .end local v1           #b2:Z
    :cond_1
    move v0, v3

    .line 1865
    goto :goto_0

    .restart local v0       #b1:Z
    :cond_2
    move v1, v3

    .line 1866
    goto :goto_1

    .restart local v1       #b2:Z
    :cond_3
    move v2, v3

    .line 1870
    goto :goto_2
.end method

.method private static compareStringColumn(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1875
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1876
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1877
    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1880
    :cond_0
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1883
    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1884
    const/4 v0, 0x0

    .line 1892
    :goto_1
    return v0

    .line 1886
    :cond_1
    if-nez v0, :cond_2

    .line 1887
    const/4 v0, -0x1

    goto :goto_1

    .line 1889
    :cond_2
    if-nez v1, :cond_3

    .line 1890
    const/4 v0, 0x1

    goto :goto_1

    .line 1892
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method static downloadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1517
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    .line 1518
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 1519
    const/4 v8, 0x0

    .line 1521
    :try_start_0
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_METADATA:[Ljava/lang/String;

    const-string v5, "mimetype=? AND data_sync2 IS NOT NULL AND (data_sync3 IS NULL   OR data_sync3!=data_sync2) AND data_sync1 IS NOT NULL"

    sget-object v6, Lcom/google/android/syncadapters/contacts/ContactHandler;->SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Landroid/database/AbstractWindowedCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move v3, v8

    .line 1525
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/database/AbstractWindowedCursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1526
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v5

    .line 1527
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v7

    .line 1528
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1529
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1530
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v12

    .line 1531
    const-wide/16 v14, 0x1

    add-long/2addr v14, v12

    .line 1532
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v16

    .line 1534
    const-string v4, "ContactsSyncAdapter"

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1535
    const-string v4, "ContactsSyncAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "need to download photo row id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for contact row id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1544
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1549
    const-wide/16 v18, 0x0

    cmp-long v4, v16, v18

    if-nez v4, :cond_1

    .line 1551
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1, v4}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1553
    invoke-static {v4}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/ResourceNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 1559
    :goto_1
    :try_start_4
    const-string v16, "data15"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1562
    :cond_1
    const-string v4, "data_sync3"

    invoke-virtual {v8, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v4, "data_version"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1564
    const-string v4, "data_sync4"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1566
    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "data_version="

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1571
    add-int/lit8 v4, v3, 0x1

    .line 1587
    :goto_2
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v3, v4

    .line 1588
    goto/16 :goto_0

    .line 1554
    :catch_0
    move-exception v4

    .line 1555
    :try_start_6
    const-string v4, "ContactsSyncAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ResourceNotFoundException while downloading photo "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", treating it as an empty photo"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1557
    const/4 v4, 0x0

    goto :goto_1

    .line 1572
    :catch_1
    move-exception v4

    .line 1573
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1590
    :catchall_0
    move-exception v4

    move-object/from16 v20, v4

    move v4, v3

    move-object/from16 v3, v20

    :goto_3
    :try_start_8
    invoke-virtual {v2}, Landroid/database/AbstractWindowedCursor;->close()V

    throw v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1592
    :catch_2
    move-exception v2

    move-object v3, v2

    move v2, v4

    .line 1593
    :goto_4
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "error writing photo data into provider"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1602
    :goto_5
    return v2

    .line 1574
    :catch_3
    move-exception v4

    .line 1577
    :try_start_9
    const-string v8, "ContactsSyncAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error downloading photo "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data_sync3"

    invoke-virtual {v4, v5, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data_version"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "data_sync4"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v4, v3

    goto/16 :goto_2

    .line 1590
    :cond_2
    :try_start_a
    invoke-virtual {v2}, Landroid/database/AbstractWindowedCursor;->close()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_b
    .catch Landroid/content/OperationApplicationException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    move v2, v3

    .line 1601
    goto :goto_5

    .line 1595
    :catch_4
    move-exception v2

    move-object v3, v2

    move v2, v8

    .line 1596
    :goto_6
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "error writing photo data into provider"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_5

    .line 1598
    :catch_5
    move-exception v2

    move v2, v8

    .line 1599
    :goto_7
    const-string v3, "ContactsSyncAdapter"

    const-string v4, "IOException downloading photo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_5

    .line 1598
    :catch_6
    move-exception v2

    move v2, v3

    goto :goto_7

    :catch_7
    move-exception v2

    move v2, v4

    goto :goto_7

    .line 1595
    :catch_8
    move-exception v2

    move-object/from16 v20, v2

    move v2, v3

    move-object/from16 v3, v20

    goto :goto_6

    :catch_9
    move-exception v2

    move-object v3, v2

    move v2, v4

    goto :goto_6

    .line 1592
    :catch_a
    move-exception v2

    move-object v3, v2

    move v2, v8

    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object/from16 v20, v2

    move v2, v3

    move-object/from16 v3, v20

    goto/16 :goto_4

    .line 1590
    :catchall_1
    move-exception v3

    goto/16 :goto_3
.end method

.method private static dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1901
    const-string v0, "ContactsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataValues for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1903
    const-string v2, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1905
    :cond_0
    return-void
.end method

.method private getNewDataVersion(Landroid/content/ContentValues;)J
    .locals 6
    .parameter "values"

    .prologue
    .line 684
    const-string v2, "data_version"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 686
    .local v0, newDataVersion:J
    :goto_0
    return-wide v0

    .line 684
    .end local v0           #newDataVersion:J
    :cond_0
    const-string v2, "data_version"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    goto :goto_0
.end method

.method static newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBirthday()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1443
    const/4 v0, 0x0

    .line 1449
    :goto_0
    return-object v0

    .line 1445
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1446
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const-string v1, "data2"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private static newContactValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1501
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1502
    const-string v1, "sourceid"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v1, "sync1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEditUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v1, "sync2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v1, "sync3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1201
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1202
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_calendar_link"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_CALENDAR_LINK:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getHRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v2, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    return-object v1

    .line 1207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1312
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1313
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EMAIL:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1316
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1320
    return-object v1

    .line 1319
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1335
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1336
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EVENT:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Event;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Event;->getStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Event;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1222
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1223
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_external_id"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_EXTERNAL_ID:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1226
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1305
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v1, "group_sourceid"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1274
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1275
    const-string v0, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v0

    .line 1278
    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    .line 1280
    const-string v4, "data5"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    const-string v0, "data6"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :goto_0
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v1, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_IM:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1297
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string v1, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    return-object v3

    .line 1282
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1284
    const-string v0, "data5"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1285
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolCustom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1288
    :cond_1
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_IM_PROTOCOL_TO_PROVIDER_PROTOCOL:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1290
    const-string v4, "data5"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1291
    const-string v0, "data6"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1232
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1233
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_jot"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_JOT:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1235
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Jot;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1183
    const-string v1, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_language"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v1, "data2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Language;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Language;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1240
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1241
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_ORGANIZATION:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v0, "data5"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgDepartment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgJobDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v0, "data7"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getOrgSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v0, "data8"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->getNameYomi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Organization;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    return-object v1

    .line 1251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1190
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_PHONE:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    return-object v1

    .line 1196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1345
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1346
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_RELATION:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/Relation;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    return-object v1
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1355
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1356
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_SIP_ADDRESS:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1369
    const-string v2, "sip:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1373
    :cond_0
    const-string v2, "data1"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1376
    return-object v1

    .line 1375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1256
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1257
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_POSTAL:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1261
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v0, "data5"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPobox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getNeighborhood()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v0, "data7"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v0, "data9"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getPostcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v0, "data8"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v0, "data10"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    return-object v1

    .line 1260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1175
    const-string v1, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_user_defined_field"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v1, "data2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    return-object v0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1324
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1325
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v2, "data2"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TYPE_TO_PROVIDER_WEBSITE:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getHRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v0, "data3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const-string v2, "is_primary"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    return-object v1

    .line 1330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata2/data/ExtendedProperty;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1383
    if-nez v0, :cond_0

    .line 1384
    const-string v0, "ContactsSyncAdapter"

    const-string v2, "dropping unparsable extended property: missing value"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1407
    :goto_0
    return-object v0

    .line 1389
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1394
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1395
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1396
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1398
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1399
    const-string v5, "mimetype"

    const-string v6, "vnd.com.google.cursor.item/contact_extended_property"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v5, "data1"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v5, "data2"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1403
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1390
    :catch_1
    move-exception v0

    .line 1391
    const-string v0, "ContactsSyncAdapter"

    const-string v2, "dropping unparsable extended property: parse error"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1392
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1407
    goto :goto_0
.end method

.method static newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1168
    const-string v1, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_hobby"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v1, "data1"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-object v0
.end method

.method static newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 1453
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1454
    const-string v0, "mimetype"

    const-string v2, "vnd.com.google.cursor.item/contact_misc"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string v0, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getBillingInformation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string v0, "data2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getDirectoryServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGender()Ljava/lang/String;

    move-result-object v0

    .line 1458
    const-string v2, "female"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1459
    const-string v0, "data3"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1463
    :cond_0
    :goto_0
    const-string v0, "data4"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getInitials()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v0, "data5"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMaidenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v0, "data6"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getMileage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const-string v0, "data7"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOccupation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v0, "data10"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string v0, "data11"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const-string v2, "data8"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_PRIORITY:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPriority()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1471
    const-string v2, "data9"

    sget-object v0, Lcom/google/android/syncadapters/contacts/ContactHandler;->ENTRY_TO_PROVIDER_SENSITIVITY:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSensitivity()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    return-object v1

    .line 1460
    :cond_1
    const-string v2, "male"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    const-string v0, "data3"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method static newIdentityDataValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1212
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1213
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/identity"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v1, "data1"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v1, "data2"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v1, "data_sync3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-object v0
.end method

.method static newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 7
    .parameter "entry"

    .prologue
    .line 1411
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1412
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getName()Lcom/google/wireless/gdata2/contacts/data/Name;

    move-result-object v0

    .line 1414
    .local v0, name:Lcom/google/wireless/gdata2/contacts/data/Name;
    if-eqz v0, :cond_0

    .line 1415
    const-string v5, "data2"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v5, "data3"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v5, "data4"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNamePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v5, "data5"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v5, "data6"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getNameSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getGivenNameYomi()Ljava/lang/String;

    move-result-object v2

    .line 1421
    .local v2, phoneticGivenName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getAdditionalNameYomi()Ljava/lang/String;

    move-result-object v3

    .line 1422
    .local v3, phoneticMiddleName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFamilyNameYomi()Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, phoneticFamilyName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1428
    const-string v5, "data7"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullNameYomi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v5, "data8"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1430
    const-string v5, "data9"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1436
    :goto_0
    const-string v5, "data1"

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/contacts/data/Name;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .end local v1           #phoneticFamilyName:Ljava/lang/String;
    .end local v2           #phoneticGivenName:Ljava/lang/String;
    .end local v3           #phoneticMiddleName:Ljava/lang/String;
    :cond_0
    return-object v4

    .line 1432
    .restart local v1       #phoneticFamilyName:Ljava/lang/String;
    .restart local v2       #phoneticGivenName:Ljava/lang/String;
    .restart local v3       #phoneticMiddleName:Ljava/lang/String;
    :cond_1
    const-string v5, "data7"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const-string v5, "data8"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v5, "data9"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1478
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1479
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v1, "data1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    return-object v0
.end method

.method static newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 1485
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1486
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 1488
    const-string v2, "data1"

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    return-object v1
.end method

.method private static newPhotoDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;
    .locals 3
    .parameter "entry"

    .prologue
    .line 1493
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1494
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v1, "data_sync1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v1, "data_sync2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLinkPhotoETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    return-object v0
.end method

.method private static providerTypeToEntryType(Ljava/lang/Integer;Ljava/util/HashMap;I)B
    .locals 2
    .parameter "typeInProvider"
    .parameter
    .parameter "defaultProviderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;I)B"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 728
    .local v0, typeInEntry:Ljava/lang/Byte;
    if-eqz p0, :cond_0

    .line 729
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #typeInEntry:Ljava/lang/Byte;
    check-cast v0, Ljava/lang/Byte;

    .line 731
    .restart local v0       #typeInEntry:Ljava/lang/Byte;
    :cond_0
    if-nez v0, :cond_1

    .line 732
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #typeInEntry:Ljava/lang/Byte;
    check-cast v0, Ljava/lang/Byte;

    .line 734
    .restart local v0       #typeInEntry:Ljava/lang/Byte;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1
.end method

.method private static setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 5
    .parameter "item"
    .parameter
    .parameter "values"
    .parameter "typeColumn"
    .parameter "labelColumn"
    .parameter "defaultType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata2/contacts/data/TypedElement;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "B)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Byte;>;"
    const/4 v4, -0x1

    .line 1124
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, label:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1126
    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p0, v4}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 1140
    :goto_0
    return-void

    .line 1130
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1131
    .local v2, typeInProvider:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 1132
    .local v1, typeInEntry:Ljava/lang/Byte;
    if-eqz v2, :cond_1

    .line 1133
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #typeInEntry:Ljava/lang/Byte;
    check-cast v1, Ljava/lang/Byte;

    .line 1135
    .restart local v1       #typeInEntry:Ljava/lang/Byte;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v4, :cond_3

    .line 1136
    :cond_2
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 1138
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setType(B)V

    .line 1139
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/wireless/gdata2/contacts/data/TypedElement;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static swapMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TA;TB;>;)",
            "Ljava/util/HashMap",
            "<TB;TA;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, originalMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TA;TB;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v2, newMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TB;TA;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 196
    .local v3, originalValue:Ljava/lang/Object;,"TB;"
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was already encountered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TA;TB;>;"
    .end local v3           #originalValue:Ljava/lang/Object;,"TB;"
    :cond_1
    return-object v2
.end method

.method private updateDataVersions(Landroid/content/ContentValues;J)V
    .locals 3
    .parameter "values"
    .parameter "newDataVersion"

    .prologue
    .line 690
    const-string v0, "data_sync4"

    const-wide/16 v1, 0xa

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    const-string v0, "data_version"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 692
    return-void
.end method

.method static uploadPhotos(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/content/SyncResult;Lcom/google/wireless/gdata2/contacts/client/ContactsClient;)I
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 1612
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    .line 1613
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 1614
    const/4 v9, 0x0

    .line 1616
    :try_start_0
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROJECTION_PHOTO_FULLDATA:[Ljava/lang/String;

    const-string v5, "mimetype=? AND (data_sync4 IS NULL OR data_sync4!=data_version) AND (data15 IS NOT NULL OR data_sync2 IS NOT NULL) AND data_sync1 IS NOT NULL"

    sget-object v6, Lcom/google/android/syncadapters/contacts/ContactHandler;->SELECTION_ARGS_PHOTO_METADATA_MIMETYPE:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v8, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1620
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v8}, Landroid/database/AbstractWindowedCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1621
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v11

    .line 1622
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v5

    .line 1623
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1624
    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Landroid/database/AbstractWindowedCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1625
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v13

    .line 1626
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Landroid/database/AbstractWindowedCursor;->getBlob(I)[B

    move-result-object v2

    .line 1627
    const-wide/16 v15, 0x1

    add-long/2addr v15, v13

    .line 1629
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    if-eqz v2, :cond_1

    .line 1634
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1635
    const-string v2, "ContactsSyncAdapter"

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1636
    const-string v2, "ContactsSyncAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "uploading photo row id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for contact row id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_0
    const-string v5, "image/*"

    move-object/from16 v2, p4

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->updateMediaEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata2/data/MediaEntry;

    .line 1651
    :goto_1
    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data_sync3"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data_sync2"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data_version"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data_sync4"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1659
    add-int/lit8 v9, v9, 0x1

    .line 1676
    :goto_2
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1679
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v8}, Landroid/database/AbstractWindowedCursor;->close()V

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1681
    :catch_0
    move-exception v2

    move-object v3, v2

    move v2, v9

    .line 1682
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "error writing photo metadata into provider"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    .line 1691
    :goto_3
    return v2

    .line 1642
    :cond_1
    :try_start_5
    const-string v2, "ContactsSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1643
    const-string v2, "ContactsSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleting photo row id "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, " for contact row id "

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_2
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1, v7}, Lcom/google/wireless/gdata2/contacts/client/ContactsClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/wireless/gdata2/client/AuthenticationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/wireless/gdata2/GDataException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 1660
    :catch_1
    move-exception v2

    .line 1661
    :try_start_6
    throw v2

    .line 1662
    :catch_2
    move-exception v2

    .line 1666
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error uploading photo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", disabling uploads "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "until it changes again"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1668
    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data_version"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data_sync4"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 1679
    :cond_3
    :try_start_7
    invoke-virtual {v8}, Landroid/database/AbstractWindowedCursor;->close()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    move v2, v9

    .line 1690
    goto/16 :goto_3

    .line 1684
    :catch_3
    move-exception v2

    move-object v3, v2

    move v2, v9

    .line 1685
    const-string v4, "ContactsSyncAdapter"

    const-string v5, "error writing photo metadata into provider"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1686
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_3

    .line 1687
    :catch_4
    move-exception v2

    move v2, v9

    .line 1688
    const-string v3, "ContactsSyncAdapter"

    const-string v4, "IOException while uploading photo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_3
.end method

.method public static validateDate(Landroid/text/format/Time;Ljava/lang/String;Z)Z
    .locals 5
    .parameter "validator"
    .parameter "date"
    .parameter "isBirthday"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 739
    if-nez p1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v1

    .line 742
    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 745
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 746
    if-eqz p2, :cond_3

    iget-boolean v3, p0, Landroid/text/format/Time;->allDay:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 65
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "contactUriWithAccount"
    .parameter "dataUriWithAccount"
    .parameter "groupUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "ContactsSyncAdapter"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v62

    .line 241
    .local v62, verboseLogging:Z
    if-nez v62, :cond_0

    const-string v4, "ContactsSyncAdapterFine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    const/16 v38, 0x1

    .line 243
    .local v38, fineOrVerboseLogging:Z
    :goto_0
    if-eqz v62, :cond_1

    .line 244
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entity is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    const/16 v28, 0x0

    .line 249
    .local v28, contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    if-eqz p5, :cond_2

    move-object/from16 v28, p5

    .line 250
    check-cast v28, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    .line 254
    :cond_2
    if-nez p4, :cond_8

    const/16 v43, 0x1

    .line 255
    .local v43, isInSyncSet:Z
    :goto_1
    if-nez v43, :cond_4

    .line 256
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .local v54, object:Ljava/lang/Object;
    move-object/from16 v39, v54

    .line 257
    check-cast v39, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    .line 258
    .local v39, group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 261
    :try_start_0
    invoke-virtual/range {v39 .. v39}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->getGroup()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v40

    .line 267
    .local v40, groupSourceId:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 268
    const/16 v43, 0x1

    .line 274
    .end local v39           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v40           #groupSourceId:Ljava/lang/String;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v54           #object:Ljava/lang/Object;
    :cond_4
    if-eqz v28, :cond_5

    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v43, :cond_9

    :cond_5
    const/16 v42, 0x1

    .line 275
    .local v42, isDelete:Z
    :goto_3
    if-nez v42, :cond_a

    if-nez p6, :cond_a

    const/16 v44, 0x1

    .line 276
    .local v44, isInsert:Z
    :goto_4
    if-nez v42, :cond_b

    if-eqz p6, :cond_b

    const/16 v45, 0x1

    .line 278
    .local v45, isUpdate:Z
    :goto_5
    if-eqz v42, :cond_c

    .line 279
    if-eqz p6, :cond_6

    .line 280
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-static {v0, v1, v4, v5, v7}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    .line 283
    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v4, Landroid/content/SyncStats;->numDeletes:J

    .line 661
    :cond_6
    :goto_6
    return-void

    .line 241
    .end local v28           #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .end local v38           #fineOrVerboseLogging:Z
    .end local v42           #isDelete:Z
    .end local v43           #isInSyncSet:Z
    .end local v44           #isInsert:Z
    .end local v45           #isUpdate:Z
    :cond_7
    const/16 v38, 0x0

    goto/16 :goto_0

    .line 254
    .restart local v28       #contactEntry:Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
    .restart local v38       #fineOrVerboseLogging:Z
    :cond_8
    const/16 v43, 0x0

    goto :goto_1

    .line 262
    .restart local v39       #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .restart local v41       #i$:Ljava/util/Iterator;
    .restart local v43       #isInSyncSet:Z
    .restart local v54       #object:Ljava/lang/Object;
    :catch_0
    move-exception v31

    .line 265
    .local v31, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_2

    .line 274
    .end local v31           #e:Ljava/io/UnsupportedEncodingException;
    .end local v39           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v41           #i$:Ljava/util/Iterator;
    .end local v54           #object:Ljava/lang/Object;
    :cond_9
    const/16 v42, 0x0

    goto :goto_3

    .line 275
    .restart local v42       #isDelete:Z
    :cond_a
    const/16 v44, 0x0

    goto :goto_4

    .line 276
    .restart local v44       #isInsert:Z
    :cond_b
    const/16 v45, 0x0

    goto :goto_5

    .line 287
    .restart local v45       #isUpdate:Z
    :cond_c
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newContactValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v6

    .line 288
    .local v6, contactsValuesServer:Landroid/content/ContentValues;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v30, dataValuesListServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNoteDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newNicknameDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newBirthdayDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v27

    .line 294
    .local v27, birthdayDataValues:Landroid/content/ContentValues;
    if-eqz v27, :cond_d

    .line 295
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_d
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newFocusMiscDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEmailAddresses()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_7
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .restart local v54       #object:Ljava/lang/Object;
    move-object/from16 v33, v54

    .line 300
    check-cast v33, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    .line 301
    .local v33, emailAddress:Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    invoke-static/range {v33 .. v33}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getLinksTo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 303
    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getLinksTo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newIdentityDataValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 308
    .end local v33           #emailAddress:Lcom/google/wireless/gdata2/contacts/data/EmailAddress;
    .end local v54           #object:Ljava/lang/Object;
    :cond_f
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPostalAddresses()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_8
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 309
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 313
    :cond_10
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getImAddresses()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_9
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 314
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 317
    :cond_11
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getOrganizations()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_a
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 318
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/Organization;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Organization;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 321
    :cond_12
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getGroups()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_13
    :goto_b
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .restart local v54       #object:Ljava/lang/Object;
    move-object/from16 v39, v54

    .line 322
    check-cast v39, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    .line 323
    .restart local v39       #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    invoke-virtual/range {v39 .. v39}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_13

    .line 325
    invoke-static/range {v39 .. v39}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)Landroid/content/ContentValues;

    move-result-object v61

    .line 326
    .local v61, values:Landroid/content/ContentValues;
    move-object/from16 v0, v30

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 329
    .end local v39           #group:Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;
    .end local v54           #object:Ljava/lang/Object;
    .end local v61           #values:Landroid/content/ContentValues;
    :cond_14
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getHobbies()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_c
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 330
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Ljava/lang/String;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromHobbyEntryElement(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 333
    :cond_15
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getUserDefinedFields()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_d
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 334
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 337
    :cond_16
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getLanguages()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_e
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 338
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/Language;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Language;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 341
    :cond_17
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExternalIds()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_f
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 342
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 345
    :cond_18
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getCalendarLinks()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_10
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 346
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 349
    :cond_19
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getJots()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_11
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 350
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/Jot;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Jot;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 353
    :cond_1a
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getPhoneNumbers()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_1b
    :goto_12
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .restart local v54       #object:Ljava/lang/Object;
    move-object/from16 v53, v54

    .line 354
    check-cast v53, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    .line 355
    .local v53, number:Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    invoke-static/range {v53 .. v53}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual/range {v53 .. v53}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getLinksTo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 357
    invoke-virtual/range {v53 .. v53}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getLinksTo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v53 .. v53}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newIdentityDataValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 362
    .end local v53           #number:Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;
    .end local v54           #object:Ljava/lang/Object;
    :cond_1c
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getWebSites()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_1d
    :goto_13
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .restart local v54       #object:Ljava/lang/Object;
    move-object/from16 v57, v54

    .line 363
    check-cast v57, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    .line 364
    .local v57, site:Lcom/google/wireless/gdata2/contacts/data/WebSite;
    invoke-static/range {v57 .. v57}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/WebSite;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual/range {v57 .. v57}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getLinksTo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 366
    invoke-virtual/range {v57 .. v57}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getLinksTo()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual/range {v57 .. v57}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getHRef()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newIdentityDataValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 371
    .end local v54           #object:Ljava/lang/Object;
    .end local v57           #site:Lcom/google/wireless/gdata2/contacts/data/WebSite;
    :cond_1e
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getRelations()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_14
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 372
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/Relation;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Relation;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 375
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getEvents()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_15
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 376
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/Event;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/Event;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 379
    :cond_20
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getSipAddresses()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_16
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .line 380
    .restart local v54       #object:Ljava/lang/Object;
    check-cast v54, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    .end local v54           #object:Ljava/lang/Object;
    invoke-static/range {v54 .. v54}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 383
    :cond_21
    invoke-virtual/range {v28 .. v28}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->getExtendedProperties()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_22
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    .restart local v54       #object:Ljava/lang/Object;
    move-object/from16 v37, v54

    .line 384
    check-cast v37, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    .line 385
    .local v37, extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    const-string v4, "android"

    invoke-virtual/range {v37 .. v37}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 386
    invoke-static/range {v37 .. v37}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newDataValuesFromEntryElement(Lcom/google/wireless/gdata2/data/ExtendedProperty;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_17
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    .line 387
    .local v60, v:Landroid/content/ContentValues;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 393
    .end local v37           #extendedProperty:Lcom/google/wireless/gdata2/data/ExtendedProperty;
    .end local v54           #object:Ljava/lang/Object;
    .end local v60           #v:Landroid/content/ContentValues;
    :cond_23
    invoke-static/range {v28 .. v28}, Lcom/google/android/syncadapters/contacts/ContactHandler;->newPhotoDataValues(Lcom/google/wireless/gdata2/contacts/data/ContactEntry;)Landroid/content/ContentValues;

    move-result-object v20

    .line 396
    .local v20, serverPhotoValues:Landroid/content/ContentValues;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v29, dataValuesListExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v44, :cond_28

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sourceid"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-static {v0, v4, v5}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityDoesNotExistAssert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 405
    .local v11, contactBackRefIfInsert:Ljava/lang/Integer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p9

    invoke-static/range {v4 .. v9}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 407
    const/4 v10, 0x0

    .line 410
    .local v10, contactIdIfUpdate:Ljava/lang/Long;
    const-string v4, "data_version"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    const-string v4, "data_sync4"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p10

    move-object/from16 v9, v20

    invoke-static/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 415
    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v4, Landroid/content/SyncStats;->numInserts:J

    .line 540
    :cond_24
    :goto_18
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 541
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 542
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 545
    :cond_25
    if-eqz v62, :cond_26

    .line 546
    const-string v4, "existing (pre cleanup)"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 547
    const-string v4, "server (pre cleanup)"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 550
    :cond_26
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v51, newExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v52, newServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v46, Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_EXACT_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v5, v7}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;)V

    .line 556
    .local v46, joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v46 .. v46}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_19
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    .line 557
    .local v56, result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    invoke-virtual/range {v56 .. v56}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getLeft()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/ContentValues;

    .line 558
    .local v36, existingValues:Landroid/content/ContentValues;
    invoke-virtual/range {v56 .. v56}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getRight()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    .line 559
    .local v23, serverValues:Landroid/content/ContentValues;
    if-eqz v36, :cond_36

    if-eqz v23, :cond_36

    .line 561
    if-eqz v62, :cond_27

    .line 562
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dropping identical data row: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setExistsOnServerFlag(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_19

    .line 417
    .end local v10           #contactIdIfUpdate:Ljava/lang/Long;
    .end local v11           #contactBackRefIfInsert:Ljava/lang/Integer;
    .end local v23           #serverValues:Landroid/content/ContentValues;
    .end local v36           #existingValues:Landroid/content/ContentValues;
    .end local v46           #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    .end local v51           #newExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v52           #newServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v56           #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_28
    const/4 v11, 0x0

    .line 418
    .restart local v11       #contactBackRefIfInsert:Ljava/lang/Integer;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 419
    .restart local v10       #contactIdIfUpdate:Ljava/lang/Long;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "version"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 420
    .local v16, contactVersion:J
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getVersionColumnName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v12, p9

    invoke-static/range {v12 .. v17}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityVersionMatchesAssert(Landroid/net/Uri;JLjava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const/16 v35, 0x0

    .line 423
    .local v35, existingPhotoValues:Landroid/content/ContentValues;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_29
    :goto_1a
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/Entity$NamedContentValues;

    .line 424
    .local v50, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v59, v0

    .line 425
    .local v59, uri:Landroid/net/Uri;
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v61, v0

    .line 426
    .restart local v61       #values:Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 427
    const-string v4, "vnd.android.cursor.item/photo"

    const-string v5, "mimetype"

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 428
    if-nez v35, :cond_2a

    .line 429
    move-object/from16 v35, v61

    goto :goto_1a

    .line 432
    :cond_2a
    const-string v4, "_id"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-static {v0, v1, v4, v5, v7}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    goto :goto_1a

    .line 438
    :cond_2b
    const-string v4, "mimetype"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 439
    .local v49, mimetype:Ljava/lang/String;
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->SERVER_MIME_TYPES:Ljava/util/Set;

    move-object/from16 v0, v49

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 440
    move-object/from16 v0, v29

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 446
    .end local v49           #mimetype:Ljava/lang/String;
    .end local v50           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    .end local v59           #uri:Landroid/net/Uri;
    .end local v61           #values:Landroid/content/ContentValues;
    :cond_2c
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p9

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 448
    move-object/from16 v0, p8

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    iput-wide v7, v4, Landroid/content/SyncStats;->numUpdates:J

    .line 450
    if-nez v35, :cond_2d

    .line 452
    const-string v4, "data_version"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v4, "data_sync4"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p10

    move-object/from16 v9, v20

    invoke-static/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_18

    .line 460
    :cond_2d
    const-string v4, "data14"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 461
    const-string v4, "data15"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 473
    :cond_2e
    const-string v4, "data_sync1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 474
    .local v32, editUri:Ljava/lang/String;
    const-string v4, "data_sync2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 475
    .local v34, etag:Ljava/lang/String;
    const-string v4, "data_sync1"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 477
    .local v47, localEditUri:Ljava/lang/String;
    const-string v4, "data_sync2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 479
    .local v48, localEtag:Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 481
    :cond_2f
    const-string v4, "data_version"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v63

    .line 484
    .local v63, version:J
    const-string v4, "data_sync4"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v58

    .line 492
    .local v58, syncMetaVersion:Ljava/lang/Long;
    if-nez v48, :cond_31

    const-string v4, "data15"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_31

    if-eqz v58, :cond_31

    .line 495
    const-string v4, "data_version"

    const-wide/16 v7, 0x1

    add-long v7, v7, v63

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    const-string v4, "data_sync4"

    const-wide/16 v7, 0x1

    add-long v7, v7, v63

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v4, "data_sync3"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v4, "data_sync2"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .end local v63           #version:J
    :cond_30
    :goto_1b
    const-string v4, "_id"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p1

    move-object/from16 v19, p10

    invoke-static/range {v18 .. v23}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_18

    .line 505
    .restart local v63       #version:J
    :cond_31
    if-nez v58, :cond_34

    .line 506
    const-string v4, "data_version"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_32

    const/16 v55, 0x1

    .line 508
    .local v55, photoExistsLocally:Z
    :goto_1c
    const-string v4, "data_version"

    const-wide/16 v7, 0x1

    add-long v7, v7, v63

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 510
    const-string v4, "data_sync4"

    if-eqz v55, :cond_33

    .end local v63           #version:J
    :goto_1d
    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1b

    .line 506
    .end local v55           #photoExistsLocally:Z
    .restart local v63       #version:J
    :cond_32
    const/16 v55, 0x0

    goto :goto_1c

    .line 510
    .restart local v55       #photoExistsLocally:Z
    :cond_33
    const-wide/16 v7, 0x1

    add-long v63, v63, v7

    goto :goto_1d

    .line 520
    .end local v55           #photoExistsLocally:Z
    :cond_34
    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 521
    if-nez v34, :cond_35

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "data14"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_35

    .line 524
    const-string v4, "data15"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 526
    :cond_35
    const-string v4, "data_version"

    const-wide/16 v7, 0x1

    add-long v7, v7, v63

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 528
    const-string v4, "data_sync4"

    const-wide/16 v7, 0x1

    add-long v7, v7, v63

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1b

    .line 568
    .end local v16           #contactVersion:J
    .end local v32           #editUri:Ljava/lang/String;
    .end local v34           #etag:Ljava/lang/String;
    .end local v35           #existingPhotoValues:Landroid/content/ContentValues;
    .end local v47           #localEditUri:Ljava/lang/String;
    .end local v48           #localEtag:Ljava/lang/String;
    .end local v58           #syncMetaVersion:Ljava/lang/Long;
    .end local v63           #version:J
    .restart local v23       #serverValues:Landroid/content/ContentValues;
    .restart local v36       #existingValues:Landroid/content/ContentValues;
    .restart local v46       #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    .restart local v51       #newExisting:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v52       #newServer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v56       #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_36
    if-eqz v36, :cond_38

    .line 569
    if-eqz v62, :cond_37

    .line 570
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add existing values: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_37
    move-object/from16 v0, v51

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 574
    :cond_38
    if-eqz v62, :cond_39

    .line 575
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add server values: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_39
    move-object/from16 v0, v52

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 581
    .end local v23           #serverValues:Landroid/content/ContentValues;
    .end local v36           #existingValues:Landroid/content/ContentValues;
    .end local v56           #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_3a
    move-object/from16 v30, v52

    .line 582
    move-object/from16 v29, v51

    .line 584
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 585
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 589
    :cond_3b
    if-eqz v38, :cond_3c

    .line 590
    const-string v4, "existing (post cleanup)"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 591
    const-string v4, "server (post cleanup)"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Lcom/google/android/syncadapters/contacts/ContactHandler;->dumpDataValues(Ljava/lang/String;Ljava/util/Collection;)V

    .line 595
    :cond_3c
    new-instance v46, Lcom/google/android/syncadapters/contacts/IteratorJoiner;

    .end local v46           #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    sget-object v7, Lcom/google/android/syncadapters/contacts/ContactHandler;->DATA_VALUES_KEY_COMPARATOR:Lcom/google/android/syncadapters/contacts/ContactHandler$DataValuesComparator;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v5, v7}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;)V

    .line 598
    .restart local v46       #joiner:Lcom/google/android/syncadapters/contacts/IteratorJoiner;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v46 .. v46}, Lcom/google/android/syncadapters/contacts/IteratorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_3d
    :goto_1e
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;

    .line 599
    .restart local v56       #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    invoke-virtual/range {v56 .. v56}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getLeft()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/ContentValues;

    .line 600
    .restart local v36       #existingValues:Landroid/content/ContentValues;
    invoke-virtual/range {v56 .. v56}, Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;->getRight()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    .line 611
    .restart local v23       #serverValues:Landroid/content/ContentValues;
    if-eqz v36, :cond_40

    if-eqz v23, :cond_40

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->isDataNotDirty(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 614
    if-eqz v38, :cond_3e

    .line 615
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating data row: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_3e
    const-string v4, "mimetype"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 619
    .restart local v49       #mimetype:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 620
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getNewDataVersion(Landroid/content/ContentValues;)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/syncadapters/contacts/ContactHandler;->updateDataVersions(Landroid/content/ContentValues;J)V

    .line 622
    :cond_3f
    const-string v4, "_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, p1

    move-object/from16 v22, p10

    invoke-static/range {v21 .. v26}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_1e

    .line 626
    .end local v49           #mimetype:Ljava/lang/String;
    :cond_40
    if-eqz v36, :cond_43

    .line 629
    const-string v4, "mimetype"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 630
    .restart local v49       #mimetype:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 631
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "this should never happen"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 633
    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->hasBeenOnServer(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 634
    if-eqz v38, :cond_42

    .line 635
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting data row "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_42
    const-string v4, "_id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-static {v0, v1, v4, v5, v7}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    goto/16 :goto_1e

    .line 642
    .end local v49           #mimetype:Ljava/lang/String;
    :cond_43
    if-eqz v38, :cond_44

    .line 643
    const-string v4, "ContactsSyncAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inserting data row "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_44
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->clearDataDirty(Landroid/content/ContentValues;)V

    .line 647
    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p10

    move-object/from16 v9, v23

    invoke-static/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_1e

    .line 653
    .end local v23           #serverValues:Landroid/content/ContentValues;
    .end local v36           #existingValues:Landroid/content/ContentValues;
    .end local v56           #result:Lcom/google/android/syncadapters/contacts/IteratorJoiner$Result;,"Lcom/google/android/syncadapters/contacts/IteratorJoiner<Landroid/content/ContentValues;>.Result;"
    :cond_45
    if-eqz p7, :cond_6

    .line 654
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v9, syncDirtyValues:Landroid/content/ContentValues;
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p9

    invoke-static/range {v7 .. v12}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto/16 :goto_6
.end method

.method clearDataDirty(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 676
    const-string v2, "vnd.android.cursor.item/photo"

    const-string v3, "mimetype"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getNewDataVersion(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 680
    .local v0, newDataVersion:J
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->updateDataVersions(Landroid/content/ContentValues;J)V

    goto :goto_0
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v8, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    invoke-direct {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;-><init>()V

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 757
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 759
    const-string v2, "sourceid"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setId(Ljava/lang/String;)V

    .line 760
    const-string v2, "sync1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setEditUri(Ljava/lang/String;)V

    .line 761
    const-string v2, "sync2"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setETag(Ljava/lang/String;)V

    .line 762
    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDeleted(Z)V

    .line 764
    const/4 v7, 0x0

    .line 766
    const/4 v4, 0x0

    .line 769
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 771
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 772
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 776
    iget-object v2, v1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 777
    iget-object v3, v1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 778
    const-string v1, "_id"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 779
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 780
    const-string v1, "mimetype"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 781
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Name;-><init>()V

    .line 783
    const-string v2, "data2"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenName(Ljava/lang/String;)V

    .line 784
    const-string v2, "data3"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyName(Ljava/lang/String;)V

    .line 785
    const-string v2, "data4"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNamePrefix(Ljava/lang/String;)V

    .line 786
    const-string v2, "data5"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalName(Ljava/lang/String;)V

    .line 787
    const-string v2, "data6"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setNameSuffix(Ljava/lang/String;)V

    .line 788
    const-string v2, "data7"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setGivenNameYomi(Ljava/lang/String;)V

    .line 789
    const-string v2, "data8"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setAdditionalNameYomi(Ljava/lang/String;)V

    .line 791
    const-string v2, "data9"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFamilyNameYomi(Ljava/lang/String;)V

    .line 792
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Name;->setFullName(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V

    .line 800
    const/4 v1, 0x1

    move-object v2, v7

    :goto_2
    move v4, v1

    move-object v7, v2

    .line 1085
    goto/16 :goto_1

    .line 762
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 801
    :cond_1
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    move-object v2, v7

    goto :goto_2

    .line 803
    :cond_2
    const-string v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    const-string v1, "com.google"

    const-string v2, "data2"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 806
    const-string v1, "data_sync3"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_3

    .line 809
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v4

    move-object v2, v7

    .line 812
    goto :goto_2

    .line 813
    :cond_4
    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 814
    const-string v1, "data1"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setContent(Ljava/lang/String;)V

    .line 815
    const/4 v1, 0x1

    move-object v2, v7

    goto :goto_2

    .line 816
    :cond_5
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 817
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/SipAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;-><init>()V

    .line 818
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_SIP_ADDRESS:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 821
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->setIsPrimary(Z)V

    .line 822
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    :cond_6
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/SipAddress;->setAddress(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addSipAddress(Lcom/google/wireless/gdata2/contacts/data/SipAddress;)V

    .line 832
    const/4 v1, 0x1

    move-object v2, v7

    .line 833
    goto/16 :goto_2

    .line 821
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 833
    :cond_8
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 834
    const-string v1, "data1"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setNickname(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x1

    move-object v2, v7

    goto/16 :goto_2

    .line 836
    :cond_9
    const-string v1, "vnd.com.google.cursor.item/contact_misc"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 837
    const-string v1, "data1"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBillingInformation(Ljava/lang/String;)V

    .line 839
    const-string v1, "data2"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setDirectoryServer(Ljava/lang/String;)V

    .line 841
    const-string v1, "data3"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 842
    if-eqz v1, :cond_a

    .line 843
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 844
    const-string v1, "male"

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    .line 853
    :cond_a
    :goto_4
    const-string v1, "data4"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setInitials(Ljava/lang/String;)V

    .line 854
    const-string v1, "data5"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMaidenName(Ljava/lang/String;)V

    .line 855
    const-string v1, "data6"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setMileage(Ljava/lang/String;)V

    .line 856
    const-string v1, "data7"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setOccupation(Ljava/lang/String;)V

    .line 857
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_PRIORITY:Ljava/util/HashMap;

    const-string v2, "data8"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 859
    if-nez v1, :cond_b

    .line 860
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 862
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setPriority(B)V

    .line 863
    sget-object v1, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TO_ENTRY_SENSITIVITY:Ljava/util/HashMap;

    const-string v2, "data9"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 865
    if-nez v1, :cond_c

    .line 866
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 868
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSensitivity(B)V

    .line 869
    const-string v1, "data10"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setShortName(Ljava/lang/String;)V

    .line 870
    const-string v1, "data11"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setSubject(Ljava/lang/String;)V

    .line 871
    const/4 v1, 0x1

    move-object v2, v7

    .line 872
    goto/16 :goto_2

    .line 845
    :cond_d
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 846
    const-string v1, "female"

    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setGender(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 848
    :cond_e
    const-string v2, "ContactsSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertEntityToEntry: dropping invalid gender "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for raw contact "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " data row "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 872
    :cond_f
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 873
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;-><init>()V

    .line 874
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EMAIL:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 877
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setIsPrimary(Z)V

    .line 878
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setAddress(Ljava/lang/String;)V

    .line 879
    const-string v2, "data4"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setDisplayName(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const/4 v1, 0x1

    move-object v2, v7

    .line 885
    goto/16 :goto_2

    .line 877
    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    .line 885
    :cond_11
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 886
    const-string v1, "data1"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 887
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 888
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;-><init>()V

    .line 889
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_WEBSITE:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x6

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 892
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setIsPrimary(Z)V

    .line 893
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setHRef(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->getHRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const/4 v1, 0x1

    :goto_7
    move-object v2, v7

    .line 899
    goto/16 :goto_2

    .line 892
    :cond_12
    const/4 v2, 0x0

    goto :goto_6

    .line 899
    :cond_13
    const-string v1, "vnd.com.google.cursor.item/contact_hobby"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 900
    const-string v1, "data1"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 902
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addHobby(Ljava/lang/String;)V

    .line 903
    const/4 v1, 0x1

    :goto_8
    move-object v2, v7

    .line 905
    goto/16 :goto_2

    :cond_14
    const-string v1, "vnd.com.google.cursor.item/contact_user_defined_field"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 906
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;-><init>()V

    .line 907
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    const-string v5, "data2"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 912
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 913
    :cond_15
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setKey(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v1, v3}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->setValue(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V

    .line 916
    const/4 v1, 0x1

    :goto_9
    move-object v2, v7

    .line 918
    goto/16 :goto_2

    :cond_16
    const-string v1, "vnd.com.google.cursor.item/contact_language"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 919
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Language;-><init>()V

    .line 920
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Language;->setCode(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Language;->getCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 922
    const-string v2, "data2"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Language;->setLabel(Ljava/lang/String;)V

    .line 924
    :cond_17
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V

    .line 925
    const/4 v1, 0x1

    move-object v2, v7

    .line 926
    goto/16 :goto_2

    :cond_18
    const-string v1, "vnd.com.google.cursor.item/contact_calendar_link"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 927
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;-><init>()V

    .line 928
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_CALENDAR_LINK:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 931
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setHRef(Ljava/lang/String;)V

    .line 932
    const-string v2, "data4"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->setIsPrimary(Z)V

    .line 934
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V

    .line 935
    const/4 v1, 0x1

    move-object v2, v7

    .line 936
    goto/16 :goto_2

    .line 932
    :cond_19
    const/4 v2, 0x0

    goto :goto_a

    .line 936
    :cond_1a
    const-string v1, "vnd.com.google.cursor.item/contact_external_id"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 937
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;-><init>()V

    .line 938
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EXTERNAL_ID:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x4

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 941
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->setValue(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V

    .line 943
    const/4 v1, 0x1

    move-object v2, v7

    .line 944
    goto/16 :goto_2

    :cond_1b
    const-string v1, "vnd.com.google.cursor.item/contact_jot"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 945
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Jot;-><init>()V

    .line 946
    const-string v2, "data2"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_JOT:Ljava/util/HashMap;

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Lcom/google/android/syncadapters/contacts/ContactHandler;->providerTypeToEntryType(Ljava/lang/Integer;Ljava/util/HashMap;I)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setType(B)V

    .line 950
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Jot;->setValue(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V

    .line 952
    const/4 v1, 0x1

    move-object v2, v7

    .line 953
    goto/16 :goto_2

    :cond_1c
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 954
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;-><init>()V

    .line 955
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_RELATION:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/16 v6, 0xb

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 958
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Relation;->setText(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V

    .line 960
    const/4 v1, 0x1

    move-object v2, v7

    .line 961
    goto/16 :goto_2

    :cond_1d
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 962
    const-string v1, "data2"

    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 963
    if-eqz v1, :cond_1e

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    .line 965
    :goto_b
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 966
    invoke-static {v11, v15, v1}, Lcom/google/android/syncadapters/contacts/ContactHandler;->validateDate(Landroid/text/format/Time;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 967
    const-string v1, "ContactsSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEntityToEntry: dropping invalid startDate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for raw contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 963
    :cond_1e
    const/4 v1, 0x0

    goto :goto_b

    .line 972
    :cond_1f
    if-eqz v1, :cond_20

    .line 973
    invoke-virtual {v8, v15}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->setBirthday(Ljava/lang/String;)V

    .line 982
    :goto_c
    const/4 v1, 0x1

    move-object v2, v7

    .line 983
    goto/16 :goto_2

    .line 975
    :cond_20
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Event;-><init>()V

    .line 976
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_EVENT:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 979
    invoke-virtual {v1, v15}, Lcom/google/wireless/gdata2/contacts/data/Event;->setStartDate(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V

    goto :goto_c

    .line 983
    :cond_21
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 984
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;-><init>()V

    .line 985
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_POSTAL:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 988
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    :goto_d
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setIsPrimary(Z)V

    .line 989
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setFormattedAddress(Ljava/lang/String;)V

    .line 991
    const-string v2, "data4"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setStreet(Ljava/lang/String;)V

    .line 992
    const-string v2, "data5"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPobox(Ljava/lang/String;)V

    .line 993
    const-string v2, "data6"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 994
    const-string v2, "data7"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCity(Ljava/lang/String;)V

    .line 995
    const-string v2, "data9"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setPostcode(Ljava/lang/String;)V

    .line 996
    const-string v2, "data8"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setRegion(Ljava/lang/String;)V

    .line 997
    const-string v2, "data10"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->setCountry(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V

    .line 999
    const/4 v1, 0x1

    move-object v2, v7

    .line 1000
    goto/16 :goto_2

    .line 988
    :cond_22
    const/4 v2, 0x0

    goto :goto_d

    .line 1000
    :cond_23
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1001
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;-><init>()V

    .line 1002
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_PHONE:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/16 v6, 0x13

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1005
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setIsPrimary(Z)V

    .line 1006
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setPhoneNumber(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const/4 v1, 0x1

    move-object v2, v7

    .line 1011
    goto/16 :goto_2

    .line 1005
    :cond_24
    const/4 v2, 0x0

    goto :goto_e

    .line 1011
    :cond_25
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1012
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;-><init>()V

    .line 1013
    const-string v2, "group_sourceid"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1015
    if-nez v2, :cond_26

    .line 1016
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "the group doesn\'t yet have a source id"

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1018
    :cond_26
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->setGroup(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V

    .line 1021
    const/4 v1, 0x1

    move-object v2, v7

    .line 1022
    goto/16 :goto_2

    :cond_27
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1023
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;-><init>()V

    .line 1024
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_ORGANIZATION:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1027
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setIsPrimary(Z)V

    .line 1028
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setName(Ljava/lang/String;)V

    .line 1030
    const-string v2, "data4"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setTitle(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V

    .line 1033
    const-string v2, "data5"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgDepartment(Ljava/lang/String;)V

    .line 1035
    const-string v2, "data6"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgJobDescription(Ljava/lang/String;)V

    .line 1037
    const-string v2, "data7"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setOrgSymbol(Ljava/lang/String;)V

    .line 1039
    const-string v2, "data8"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/Organization;->setNameYomi(Ljava/lang/String;)V

    .line 1041
    const/4 v1, 0x1

    move-object v2, v7

    .line 1042
    goto/16 :goto_2

    .line 1027
    :cond_28
    const/4 v2, 0x0

    goto :goto_f

    .line 1042
    :cond_29
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1043
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;-><init>()V

    .line 1044
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_TYPE_TO_ENTRY_IM:Ljava/util/HashMap;

    const-string v4, "data2"

    const-string v5, "data3"

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Lcom/google/android/syncadapters/contacts/ContactHandler;->setTypeAndLabel(Lcom/google/wireless/gdata2/contacts/data/TypedElement;Ljava/util/HashMap;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1047
    const-string v2, "is_primary"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setIsPrimary(Z)V

    .line 1048
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setAddress(Ljava/lang/String;)V

    .line 1049
    const-string v2, "data5"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1050
    sget-object v2, Lcom/google/android/syncadapters/contacts/ContactHandler;->PROVIDER_IM_PROTOCOL_TO_ENTRY_PROTOCOL:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 1052
    if-nez v4, :cond_2c

    .line 1053
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 1054
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 1066
    :goto_11
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->getProtocolPredefined()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2a

    .line 1067
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 1068
    const-string v2, "netmeeting"

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    .line 1070
    :cond_2a
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V

    .line 1071
    const/4 v1, 0x1

    move-object v2, v7

    .line 1072
    goto/16 :goto_2

    .line 1047
    :cond_2b
    const/4 v2, 0x0

    goto :goto_10

    .line 1055
    :cond_2c
    const-string v4, "data6"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    if-nez v2, :cond_2e

    .line 1058
    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    .line 1059
    const-string v2, "data6"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolCustom(Ljava/lang/String;)V

    goto :goto_11

    .line 1063
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->setProtocolPredefined(B)V

    goto :goto_11

    .line 1072
    :cond_2f
    const-string v1, "vnd.com.google.cursor.item/contact_extended_property"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1073
    if-nez v7, :cond_38

    .line 1074
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1077
    :goto_12
    :try_start_0
    const-string v2, "data1"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "data2"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    move v1, v4

    .line 1082
    goto/16 :goto_2

    .line 1080
    :catch_0
    move-exception v1

    .line 1081
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "bad key or value"

    invoke-direct {v2, v3, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1087
    :cond_30
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1088
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1089
    if-eqz v2, :cond_31

    .line 1090
    instance-of v5, v2, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    if-eqz v5, :cond_32

    .line 1091
    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->setLinksTo(Ljava/lang/String;)V

    goto :goto_13

    .line 1092
    :cond_32
    instance-of v5, v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    if-eqz v5, :cond_33

    .line 1093
    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->setLinksTo(Ljava/lang/String;)V

    goto :goto_13

    .line 1094
    :cond_33
    instance-of v5, v2, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    if-eqz v5, :cond_31

    .line 1095
    check-cast v2, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->setLinksTo(Ljava/lang/String;)V

    goto :goto_13

    .line 1100
    :cond_34
    if-eqz v7, :cond_36

    .line 1101
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1102
    if-nez v1, :cond_35

    .line 1103
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to convert JSON object into a JSON string, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1106
    :cond_35
    new-instance v2, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-direct {v2}, Lcom/google/wireless/gdata2/data/ExtendedProperty;-><init>()V

    .line 1107
    const-string v3, "android"

    invoke-virtual {v2, v3}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setName(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v2, v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->setValue(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v8, v2}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V

    .line 1110
    const/4 v4, 0x1

    .line 1113
    :cond_36
    if-eqz p4, :cond_37

    .line 1114
    invoke-virtual {v8}, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_37

    if-nez v4, :cond_37

    .line 1115
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "empty entry"

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1119
    :cond_37
    return-object v8

    :cond_38
    move-object v1, v7

    goto/16 :goto_12

    :cond_39
    move v1, v4

    move-object v2, v7

    goto/16 :goto_2

    :cond_3a
    move v1, v4

    goto/16 :goto_9

    :cond_3b
    move v1, v4

    goto/16 :goto_8

    :cond_3c
    move v1, v4

    goto/16 :goto_7
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    const-string v0, "deleted"

    return-object v0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    const-string v0, "dirty"

    return-object v0
.end method

.method public getEditUriColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1155
    const-string v0, "sync1"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 224
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 214
    const-class v0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    const-string v0, "sync2"

    return-object v0
.end method

.method public getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base2_property-android_linksto-gprofiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, url:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1143
    const-string v0, "sourceid"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "contacts"

    return-object v0
.end method

.method public getVersionColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    const-string v0, "version"

    return-object v0
.end method

.method hasBeenOnServer(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "values"

    .prologue
    .line 717
    const-string v1, "vnd.android.cursor.item/photo"

    const-string v2, "mimetype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 720
    :cond_0
    const-string v1, "data_sync4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 722
    .local v0, sync4:Ljava/lang/Long;
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 210
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDataNotDirty(Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "values"

    .prologue
    const-wide/16 v7, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 695
    const-string v5, "vnd.android.cursor.item/photo"

    const-string v6, "mimetype"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 696
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 698
    :cond_0
    const-string v5, "data_sync4"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 701
    .local v2, sync4:Ljava/lang/Long;
    if-nez v2, :cond_2

    .line 713
    :cond_1
    :goto_0
    return v3

    .line 706
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 707
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 712
    :cond_3
    const-string v5, "data_version"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 713
    .local v0, dataVersion:J
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .locals 6
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 229
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 230
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method

.method setExistsOnServerFlag(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 7
    .parameter
    .parameter "dataUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v3, "vnd.android.cursor.item/photo"

    const-string v4, "mimetype"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v3, "_id"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 669
    .local v2, uri:Landroid/net/Uri;
    invoke-direct {p0, p3}, Lcom/google/android/syncadapters/contacts/ContactHandler;->getNewDataVersion(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 670
    .local v0, newDataVersion:J
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data_sync4"

    const-wide/16 v5, 0xa

    add-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const-string v4, "data_version"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
