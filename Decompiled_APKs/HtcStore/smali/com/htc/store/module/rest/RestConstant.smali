.class public Lcom/htc/store/module/rest/RestConstant;
.super Ljava/lang/Object;
.source "RestConstant.java"


# static fields
.field public static final LENGTH_EACH_QUERY:I = 0x32

.field public static final MY_UUID:Ljava/util/UUID; = null

.field public static final RESULT_ERROR:I = 0x190

.field public static final RESULT_ERROR_DEVICE_DISCONNECTED:I = 0x1ae

.field public static final RESULT_ERROR_INVALID_TOKEN:I = 0x1a4

.field public static final RESULT_ERROR_PASSWORD_CHANGE:I = 0x19a

.field public static final RESULT_ERROR_PASSWORD_INVALID:I = 0x1b8

.field public static final RESULT_ERROR_RELAUNCH:I = 0x1c2

.field public static final RESULT_RETRY:I = 0x1f4

.field public static final RESULT_SUCCESS:I = 0xc8

.field public static final RESULT_UNKNOWN:I = -0x1

.field public static final SORT_BY_COMMENTDATE:Ljava/lang/String; = "CommentDate"

.field public static final SORT_BY_COMMENTLIKEDATE:Ljava/lang/String; = "CommentLikeDate"

.field public static final SORT_BY_COMMENT_COUNT:Ljava/lang/String; = "CommentCount"

.field public static final SORT_BY_FIRST_NAME:Ljava/lang/String; = "FirstName"

.field public static final SORT_BY_LAST_NAME:Ljava/lang/String; = "LastName"

.field public static final SORT_BY_LIKEDATE:Ljava/lang/String; = "LikeDate"

.field public static final SORT_BY_LIKE_COUNT:Ljava/lang/String; = "LikeCount"

.field public static final SORT_BY_POPULAR_COUNT:Ljava/lang/String; = "PopoularCount"

.field public static final SORT_BY_TIMESTAMP:Ljava/lang/String; = "TimeStamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/htc/store/module/rest/RestConstant;->MY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
