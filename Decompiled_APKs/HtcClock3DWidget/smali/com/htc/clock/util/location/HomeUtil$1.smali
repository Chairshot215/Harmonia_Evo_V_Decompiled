.class Lcom/htc/clock/util/location/HomeUtil$1;
.super Ljava/lang/Object;
.source "HomeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/location/HomeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/HomeUtil;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/location/HomeUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/htc/clock/util/location/HomeUtil$1;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/clock/util/location/HomeUtil$1;->this$0:Lcom/htc/clock/util/location/HomeUtil;

    invoke-virtual {v0}, Lcom/htc/clock/util/location/HomeUtil;->getCurrentHomeTime()V

    .line 188
    return-void
.end method
