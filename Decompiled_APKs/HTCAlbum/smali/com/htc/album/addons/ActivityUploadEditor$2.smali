.class Lcom/htc/album/addons/ActivityUploadEditor$2;
.super Ljava/lang/Object;
.source "ActivityUploadEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/ActivityUploadEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/ActivityUploadEditor;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/ActivityUploadEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/album/addons/ActivityUploadEditor$2;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$2;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor$2;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/ActivityUploadEditor;->setKeepScreenOn(Landroid/app/Activity;Z)V

    .line 289
    return-void
.end method
