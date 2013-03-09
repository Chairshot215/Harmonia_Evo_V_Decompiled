.class Lcom/android/providers/htcCheckin/apkInfo$FLOG;
.super Ljava/lang/Object;
.source "apkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/apkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FLOG"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/apkInfo;


# direct methods
.method private constructor <init>(Lcom/android/providers/htcCheckin/apkInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/providers/htcCheckin/apkInfo$FLOG;->this$0:Lcom/android/providers/htcCheckin/apkInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 140
    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 134
    return-void
.end method
