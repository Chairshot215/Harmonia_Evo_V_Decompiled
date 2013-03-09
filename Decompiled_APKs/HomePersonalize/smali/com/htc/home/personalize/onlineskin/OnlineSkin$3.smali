.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$3;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;->ShowNetWorkErrorMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$3;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$3;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    sget-object v2, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->REDAYDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    invoke-static {v1, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$002(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;)Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$3;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void
.end method
