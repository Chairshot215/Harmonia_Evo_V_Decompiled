.class public final Lcom/htc/provider/ContactsContract$SIMContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SIMContacts"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "SIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.anddroid.contacts.sim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contacts_sim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI_SOURCE_ID:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$SIMContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 826
    sget-object v0, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$SIMContacts;->CONTENT_URI_SOURCE_ID:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    return-void
.end method
