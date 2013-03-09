.class Lcom/android/ex/chips/Queries;
.super Ljava/lang/Object;
.source "Queries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/Queries$Query;
    }
.end annotation


# static fields
.field public static final EMAIL:Lcom/android/ex/chips/Queries$Query;

.field public static final PHONE:Lcom/android/ex/chips/Queries$Query;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/android/ex/chips/Queries$1;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "display_name"

    aput-object v2, v1, v4

    const-string v2, "data1"

    aput-object v2, v1, v5

    const-string v2, "data2"

    aput-object v2, v1, v6

    const-string v2, "data3"

    aput-object v2, v1, v7

    const-string v2, "contact_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "display_name_source"

    aput-object v3, v1, v2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/Queries$1;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    .line 48
    new-instance v0, Lcom/android/ex/chips/Queries$2;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "display_name"

    aput-object v2, v1, v4

    const-string v2, "data1"

    aput-object v2, v1, v5

    const-string v2, "data2"

    aput-object v2, v1, v6

    const-string v2, "data3"

    aput-object v2, v1, v7

    const-string v2, "contact_id"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "photo_thumb_uri"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "display_name_source"

    aput-object v3, v1, v2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/Queries$2;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method
