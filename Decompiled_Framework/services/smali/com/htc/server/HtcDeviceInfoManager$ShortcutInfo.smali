.class Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;
.super Ljava/lang/Object;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutInfo"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;->mClassName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/server/HtcDeviceInfoManager$ShortcutInfo;->mAppName:Ljava/lang/String;

    return-void
.end method
