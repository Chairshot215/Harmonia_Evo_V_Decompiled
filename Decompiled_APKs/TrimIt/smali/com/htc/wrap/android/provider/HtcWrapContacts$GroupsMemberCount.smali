.class public final Lcom/htc/wrap/android/provider/HtcWrapContacts$GroupsMemberCount;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupsMemberCount"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final GROUP_ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_MEMBER_COUNT:Ljava/lang/String; = "count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_NAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_SYNC_ID:Ljava/lang/String; = "syncid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    sget-object v0, Landroid/provider/Contacts$GroupsMemberCount;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$GroupsMemberCount;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
