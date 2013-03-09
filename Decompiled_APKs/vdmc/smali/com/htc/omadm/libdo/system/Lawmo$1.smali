.class Lcom/htc/omadm/libdo/system/Lawmo$1;
.super Ljava/lang/Object;
.source "Lawmo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/system/Lawmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/system/Lawmo;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/system/Lawmo;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/Lawmo$1;->this$0:Lcom/htc/omadm/libdo/system/Lawmo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/omadm/libdo/system/Lawmo$1;->this$0:Lcom/htc/omadm/libdo/system/Lawmo;

    #calls: Lcom/htc/omadm/libdo/system/Lawmo;->CheckPhoneLock()V
    invoke-static {v0}, Lcom/htc/omadm/libdo/system/Lawmo;->access$000(Lcom/htc/omadm/libdo/system/Lawmo;)V

    .line 166
    return-void
.end method
