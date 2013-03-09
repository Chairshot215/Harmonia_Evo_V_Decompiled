.class Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$2;
.super Ljava/lang/Object;
.source "UakChooseFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->finishactivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$2;->this$0:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity$2;->this$0:Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->finish()V

    .line 583
    return-void
.end method
