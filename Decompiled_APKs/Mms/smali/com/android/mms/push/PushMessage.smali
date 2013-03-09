.class public interface abstract Lcom/android/mms/push/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/wappush"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/wappush"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final HREF:Ljava/lang/String; = "href"

.field public static final ISREAD:Ljava/lang/String; = "isRead"

.field public static final PHONENUMBER:Ljava/lang/String; = "phoneNumber"

.field public static final PUSH_TYPE_SI:I = 0x0

.field public static final PUSH_TYPE_SL:I = 0x1

.field public static final RECEIVED_TIME:Ljava/lang/String; = "receivedTime"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://wappush"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/push/PushMessage;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
