.class public Lcom/htc/android/psclient/PSCommon$UpdateInfo;
.super Ljava/lang/Object;
.source "PSCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/PSCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateInfo"
.end annotation


# instance fields
.field feature:Ljava/lang/String;

.field link:Ljava/lang/String;

.field size:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "f"
    .parameter "s"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/htc/android/psclient/PSCommon$UpdateInfo;->link:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/htc/android/psclient/PSCommon$UpdateInfo;->version:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/htc/android/psclient/PSCommon$UpdateInfo;->feature:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/htc/android/psclient/PSCommon$UpdateInfo;->size:Ljava/lang/String;

    .line 162
    return-void
.end method
