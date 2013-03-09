.class public interface abstract Lcom/android/mms/push/SlMessage;
.super Ljava/lang/Object;
.source "SlMessage.java"

# interfaces
.implements Lcom/android/mms/push/PushMessage;


# static fields
.field public static final ACTION_CACHE:I = 0x7

.field public static final ACTION_EXECUTE_HIGH:I = 0x6

.field public static final ACTION_EXECUTE_LOW:I = 0x5

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sl"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/sl"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://wappush/sl"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/push/SlMessage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
