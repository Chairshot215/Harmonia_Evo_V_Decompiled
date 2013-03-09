.class public Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
.super Ljava/lang/Object;
.source "UpdaterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/util/UpdaterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateInfo"
.end annotation


# instance fields
.field public feature:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "f"
    .parameter "s"

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->link:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->version:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->feature:Ljava/lang/String;

    .line 167
    iput-object p4, p0, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->size:Ljava/lang/String;

    .line 168
    return-void
.end method
