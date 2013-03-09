.class Lcom/htc/WifiRouter/WifiRouter$Device_info;
.super Ljava/lang/Object;
.source "WifiRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/WifiRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Device_info"
.end annotation


# instance fields
.field device_name:Ljava/lang/String;

.field mac_address:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method private constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$Device_info;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
