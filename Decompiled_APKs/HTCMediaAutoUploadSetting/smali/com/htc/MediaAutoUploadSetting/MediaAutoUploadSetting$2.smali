.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$2;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$2;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$2;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #calls: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->setResultForOutgoingIntent()V
    invoke-static {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1400(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)V

    .line 353
    iget-object v0, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$2;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-virtual {v0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->finish()V

    .line 354
    return-void
.end method
