.class public final Lcom/htc/wrap/android/provider/HtcWrapContacts$Groups;
.super Ljava/lang/Object;
.source "HtcWrapContacts.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapContacts$GroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation


# static fields
.field public static final EXTRA_GROUP_CUSTOM_SOURCE:I = 0x4

.field public static final EXTRA_GROUP_EXCHANGE:I = 0x1

.field public static final EXTRA_GROUP_GOOGLE:I = 0x0

.field public static final EXTRA_GROUP_PC:I = 0x2

.field public static final EXTRA_GROUP_SIM:I = 0x3

.field public static final GOOGLE_GROUP_DELETE_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_GROUP_MEMBER_ADD_RINGTONE_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_EXCHANGE:Ljava/lang/String; = "Exchange"

.field public static final GROUP_EXCHANGE_SYNC_ID:Ljava/lang/String; = "1"

.field public static final GROUP_HTC_FAVORITE:Ljava/lang/String; = "HTC Favorite"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_ID_STARRED:I = 0x4

.field public static final GROUP_PC:Ljava/lang/String; = "PC"

.field public static final GROUP_PC_SYNC_ID:Ljava/lang/String; = "2"

.field public static final GROUP_SENDMAIL_ADDRESSES_URI:Landroid/net/Uri; = null

.field public static final GROUP_SENDMESSAGE_ADDRESSES_URI:Landroid/net/Uri; = null

.field public static final GROUP_SYNCML:Ljava/lang/String; = "SyncML"

.field public static final GROUP_SYNCML_SYNC_ID:Ljava/lang/String; = "4"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 440
    sget-object v0, Landroid/provider/Contacts$Groups;->GOOGLE_GROUP_DELETE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$Groups;->GOOGLE_GROUP_DELETE_URI:Landroid/net/Uri;

    .line 448
    sget-object v0, Landroid/provider/Contacts$Groups;->GOOGLE_GROUP_MEMBER_ADD_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$Groups;->GOOGLE_GROUP_MEMBER_ADD_RINGTONE_URI:Landroid/net/Uri;

    .line 453
    sget-object v0, Landroid/provider/Contacts$Groups;->GROUP_SENDMESSAGE_ADDRESSES_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$Groups;->GROUP_SENDMESSAGE_ADDRESSES_URI:Landroid/net/Uri;

    .line 454
    sget-object v0, Landroid/provider/Contacts$Groups;->GROUP_SENDMAIL_ADDRESSES_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapContacts$Groups;->GROUP_SENDMAIL_ADDRESSES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultExtraGroup()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 496
    invoke-static {}, Landroid/provider/Contacts$Groups;->getDefaultExtraGroup()I

    move-result v0

    return v0
.end method

.method public static getGroupPhotoBitmap(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "cr"
    .parameter "groupId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    invoke-static {p0, p1, p2}, Landroid/provider/Contacts$Groups;->getGroupPhotoBitmap(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static loadGroupPhoto(Landroid/content/Context;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "groupId"
    .parameter "placeholderImageResource"
    .parameter "options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    invoke-static {p0, p1, p2, p3, p4}, Landroid/provider/Contacts$Groups;->loadGroupPhoto(Landroid/content/Context;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;J[B)V
    .locals 0
    .parameter "cr"
    .parameter "groupId"
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$Groups;->setPhotoData(Landroid/content/ContentResolver;J[B)V

    .line 516
    return-void
.end method
