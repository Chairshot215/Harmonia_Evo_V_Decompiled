.class Lcom/android/server/connectivity/Tethering$HtcTetherHistory;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcTetherHistory"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public event:I

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field public timeStamp:J


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$HtcTetherHistory;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method
