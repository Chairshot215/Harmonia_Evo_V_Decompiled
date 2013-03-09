.class Lcom/android/htcdialer/SpeedDialListActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/SpeedDialListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/htcdialer/SpeedDialListActivity$1;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$1;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->addSpeedDial()V
    invoke-static {v0}, Lcom/android/htcdialer/SpeedDialListActivity;->access$000(Lcom/android/htcdialer/SpeedDialListActivity;)V

    .line 134
    return-void
.end method
