.class public final Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SpeedDial;
.super Ljava/lang/Object;
.source "HtcWrapHtcUnionContact.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDial"
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "speed_dial"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_dpeed_dial"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact_speed_dial"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "location ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapHtcUnionContact$SpeedDial;->CONTENT_URI:Landroid/net/Uri;

    .line 1270
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
