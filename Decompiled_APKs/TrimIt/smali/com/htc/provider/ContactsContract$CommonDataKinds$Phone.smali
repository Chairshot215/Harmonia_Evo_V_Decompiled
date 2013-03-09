.class public final Lcom/htc/provider/ContactsContract$CommonDataKinds$Phone;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_EQUALL:Ljava/lang/String; = "vnd.android.cursor.dir/phone_equall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_LOOKUP:Ljava/lang/String; = "vnd.android.cursor.dir/htc_phone_lookup"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_MSG_NUMBER:Ljava/lang/String; = "data7"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 681
    sget-object v0, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_LOOKUP_NUMBER_EQUAL_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
