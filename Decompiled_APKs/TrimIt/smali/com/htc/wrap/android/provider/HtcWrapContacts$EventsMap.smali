.class public final Lcom/htc/wrap/android/provider/HtcWrapContacts$EventsMap;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapContacts$EventsMapColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventsMap"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "events_map"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_events_map"

.field public static final CONTENT_PEOPLE_JOIN_URI:Landroid/net/Uri; = null

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_events_map"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "person, date ASC"

.field public static final SOURCE_FACEBOOK:I

.field public static final SOURCE_LOCAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 998
    sget-object v0, Landroid/provider/Contacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    .line 1003
    sget-object v0, Landroid/provider/Contacts$EventsMap;->CONTENT_PEOPLE_JOIN_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$EventsMap;->CONTENT_PEOPLE_JOIN_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    return-void
.end method

.method public static setAllLocalEventReadStatus(Landroid/content/Context;JZ)V
    .locals 0
    .parameter "context"
    .parameter "personId"
    .parameter "isRead"

    .prologue
    .line 1036
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$EventsMap;->setAllLocalEventReadStatus(Landroid/content/Context;JZ)V

    .line 1037
    return-void
.end method
