.class public interface abstract Lcom/android/mms/push/SiMessage;
.super Ljava/lang/Object;
.source "SiMessage.java"

# interfaces
.implements Lcom/android/mms/push/PushMessage;


# static fields
.field public static final ACTION_DELETE:I = 0x9

.field public static final ACTION_SIGNAL_HIGH:I = 0x8

.field public static final ACTION_SIGNAL_LOW:I = 0x6

.field public static final ACTION_SIGNAL_MEDIUM:I = 0x7

.field public static final ACTION_SIGNAL_NONE:I = 0x5

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/si"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/si"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final EXPIRES:Ljava/lang/String; = "si_expires"

.field public static final SI_ID:Ljava/lang/String; = "si_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://wappush/si"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/push/SiMessage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
