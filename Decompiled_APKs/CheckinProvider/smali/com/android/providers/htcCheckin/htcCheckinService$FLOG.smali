.class Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;
.super Ljava/lang/Object;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FLOG"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3178
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3178
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 3190
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 3195
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 3184
    return-void
.end method
