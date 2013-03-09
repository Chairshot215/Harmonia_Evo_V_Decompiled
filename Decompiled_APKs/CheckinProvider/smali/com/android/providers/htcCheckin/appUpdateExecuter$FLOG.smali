.class public Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;
.super Ljava/lang/Object;
.source "appUpdateExecuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/appUpdateExecuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FLOG"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 900
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 900
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/appUpdateExecuter$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 912
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 917
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 906
    return-void
.end method
