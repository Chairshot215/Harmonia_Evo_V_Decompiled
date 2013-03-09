.class interface abstract Lcom/android/providers/contacts/HtcContactsProvider2$SimpleSocialNetworkDataQuery;
.super Ljava/lang/Object;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SimpleSocialNetworkDataQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DATA1:I = 0x2

.field public static final MIMETYPE:I = 0x1

.field public static final RAW_CONTACT_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2305
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcContactsProvider2$SimpleSocialNetworkDataQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
