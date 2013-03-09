.class public interface abstract Lcom/muvee/video/trimer/MmvtConstant;
.super Ljava/lang/Object;
.source "MmvtConstant.java"


# static fields
.field public static final ACTION_STRING:Ljava/lang/String; = "com.muvee.video.trimer.VIDEO_TRIM"

.field public static final ACTION_STRING_CLOSED:Ljava/lang/String; = "com.muvee.video.trimer.VIDEO_TRIM_CLOSED"

.field public static final KEY_DATD:Ljava/lang/String; = "data"

.field public static final KEY_PLAY_CURRENT_POSITION:Ljava/lang/String; = "com.muvee.video.trimer.PLAY_CURRENT"

.field public static final KEY_TRIMER_CLOSED:Ljava/lang/String; = "com.muvee.video.trimer.TRIMER_CLOSED"

.field public static final KEY_TRIMING:Ljava/lang/String; = "com.muvee.video.trimer.TRIMING"

.field public static final KEY_TRIM_DATA:Ljava/lang/String; = "com.muvee.video.trimer.TRIM_DATA"

.field public static final KEY_TRIM_FILE_PATH:Ljava/lang/String; = "com.muvee.video.trimer.TRIM_FILE_PATH"

.field public static final KEY_TRIM_LEFT:Ljava/lang/String; = "com.muvee.video.trimer.TRIM_LEFT"

.field public static final KEY_TRIM_RIGHT:Ljava/lang/String; = "com.muvee.video.trimer.TRIM_RIGHT"

.field public static final NOTIFICATION_ID:I = 0x3039

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "com.muvee.video.trimer.preference"

.field public static final THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface; = null

.field public static final WIDTH:I = 0xf0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/muvee/video/trimer/ThumbInterface;

    invoke-direct {v0}, Lcom/muvee/video/trimer/ThumbInterface;-><init>()V

    sput-object v0, Lcom/muvee/video/trimer/MmvtConstant;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    .line 4
    return-void
.end method
