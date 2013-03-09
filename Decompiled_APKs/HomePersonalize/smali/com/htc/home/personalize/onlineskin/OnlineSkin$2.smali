.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$2;
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
    .line 314
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$2;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$2;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    sget-object v1, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->REDAYDOWNLOAD:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    invoke-static {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$002(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;)Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    .line 317
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$2;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->StartOnLineSkin()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 318
    return-void
.end method
