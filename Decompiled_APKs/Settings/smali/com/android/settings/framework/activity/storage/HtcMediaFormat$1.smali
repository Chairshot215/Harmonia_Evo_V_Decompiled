.class Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;
.super Ljava/lang/Object;
.source "HtcMediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormat;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormat;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->access$000(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcMediaFormat;

    #calls: Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->access$100(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;)V

    .line 113
    :cond_0
    return-void
.end method
