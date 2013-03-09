.class interface abstract Lcom/android/providers/contacts/HtcContactsProvider2$SimpleMyContactSocialNetworkDataQuery;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SimpleMyContactSocialNetworkDataQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DATA1:I = 0x2

.field public static final DATA2:I = 0x3

.field public static final MIMETYPE:I = 0x1

.field public static final PHONE_SOCIALNETWORK_TYPE:I = 0x6

.field public static final PHOTO_URL:I = 0x4

.field public static final SOCIALNETWORK_TYPE:I = 0x5

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2285
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcContactsProvider2$SimpleMyContactSocialNetworkDataQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
