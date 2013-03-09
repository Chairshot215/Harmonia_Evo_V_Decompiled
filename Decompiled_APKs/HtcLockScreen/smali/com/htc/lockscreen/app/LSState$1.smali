.class Lcom/htc/lockscreen/app/LSState$1;
.super Ljava/lang/Object;
.source "LSState.java"

# interfaces
.implements Lcom/htc/lockscreen/app/util/OOBEMonitor$OOBEMonitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$1;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnOOBEDone(Z)V
    .locals 1
    .parameter "done"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/htc/lockscreen/app/LSState$1;->this$0:Lcom/htc/lockscreen/app/LSState;

    #setter for: Lcom/htc/lockscreen/app/LSState;->mOOBEDone:Z
    invoke-static {v0, p1}, Lcom/htc/lockscreen/app/LSState;->access$2802(Lcom/htc/lockscreen/app/LSState;Z)Z

    .line 1098
    return-void
.end method
