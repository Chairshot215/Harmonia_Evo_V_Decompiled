.class Lcom/htc/album/addons/ActivityUploadEditor$1;
.super Ljava/lang/Object;
.source "ActivityUploadEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 272
    iput-object p1, p0, Lcom/htc/album/addons/ActivityUploadEditor$1;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 276
    sparse-switch p2, :sswitch_data_0

    .line 283
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 280
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor$1;->this$0:Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 281
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
