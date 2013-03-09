.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$1;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$1;->this$2:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 550
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 551
    return-void
.end method
